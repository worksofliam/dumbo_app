**free

ctl-opt dftactgrp(*no);

dcl-pi P1601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds T895 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T895 FROM T895 LIMIT 1;

theCharVar = 'Hello from P1601';
dsply theCharVar;
callp localProc();
P223();
P132();
P900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1601 in the procedure';
end-proc;