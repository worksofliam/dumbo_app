**free

ctl-opt dftactgrp(*no);

dcl-pi P1785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'

dcl-ds T230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T230 FROM T230 LIMIT 1;

theCharVar = 'Hello from P1785';
dsply theCharVar;
callp localProc();
P849();
P472();
P1427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1785 in the procedure';
end-proc;