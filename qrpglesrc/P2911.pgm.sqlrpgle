**free

ctl-opt dftactgrp(*no);

dcl-pi P2911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P1779.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds T777 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T777 FROM T777 LIMIT 1;

theCharVar = 'Hello from P2911';
dsply theCharVar;
callp localProc();
P826();
P1779();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2911 in the procedure';
end-proc;