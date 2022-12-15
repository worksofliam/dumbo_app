**free

ctl-opt dftactgrp(*no);

dcl-pi P920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P920';
dsply theCharVar;
callp localProc();
P121();
P195();
P448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P920 in the procedure';
end-proc;