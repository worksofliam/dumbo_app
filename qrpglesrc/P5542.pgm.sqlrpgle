**free

ctl-opt dftactgrp(*no);

dcl-pi P5542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3988.rpgleinc'
/copy 'qrpgleref/P2553.rpgleinc'
/copy 'qrpgleref/P4529.rpgleinc'

dcl-ds theTable extname('T1271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1271 LIMIT 1;

theCharVar = 'Hello from P5542';
dsply theCharVar;
P3988();
P2553();
P4529();
return;