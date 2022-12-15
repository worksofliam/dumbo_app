**free

ctl-opt dftactgrp(*no);

dcl-pi P46;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P46';
dsply theCharVar;
callp localProc();
P35();
P14();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P46 in the procedure';
end-proc;