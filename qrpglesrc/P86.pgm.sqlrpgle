**free

ctl-opt dftactgrp(*no);

dcl-pi P86;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P86';
dsply theCharVar;
callp localProc();
P24();
P26();
P65();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P86 in the procedure';
end-proc;