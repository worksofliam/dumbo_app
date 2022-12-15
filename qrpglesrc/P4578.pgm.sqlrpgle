**free

ctl-opt dftactgrp(*no);

dcl-pi P4578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P4515.rpgleinc'

dcl-ds T464 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T464 FROM T464 LIMIT 1;

theCharVar = 'Hello from P4578';
dsply theCharVar;
callp localProc();
P2982();
P473();
P4515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4578 in the procedure';
end-proc;