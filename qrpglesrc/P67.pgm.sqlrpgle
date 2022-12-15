**free

ctl-opt dftactgrp(*no);

dcl-pi P67;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P67';
dsply theCharVar;
callp localProc();
P32();
P57();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P67 in the procedure';
end-proc;