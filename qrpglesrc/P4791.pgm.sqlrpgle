**free

ctl-opt dftactgrp(*no);

dcl-pi P4791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P3137.rpgleinc'
/copy 'qrpgleref/P1530.rpgleinc'

dcl-ds T704 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T704 FROM T704 LIMIT 1;

theCharVar = 'Hello from P4791';
dsply theCharVar;
callp localProc();
P2560();
P3137();
P1530();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4791 in the procedure';
end-proc;