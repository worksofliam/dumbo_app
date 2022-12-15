**free

ctl-opt dftactgrp(*no);

dcl-pi P1248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'

dcl-ds theTable extname('T805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T805 LIMIT 1;

theCharVar = 'Hello from P1248';
dsply theCharVar;
P451();
P704();
P644();
return;