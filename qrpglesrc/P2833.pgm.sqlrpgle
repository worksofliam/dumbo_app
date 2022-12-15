**free

ctl-opt dftactgrp(*no);

dcl-pi P2833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2698.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds T1536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1536 FROM T1536 LIMIT 1;

theCharVar = 'Hello from P2833';
dsply theCharVar;
callp localProc();
P2698();
P921();
P676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2833 in the procedure';
end-proc;