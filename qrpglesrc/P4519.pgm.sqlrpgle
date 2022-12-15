**free

ctl-opt dftactgrp(*no);

dcl-pi P4519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4329.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P2271.rpgleinc'

dcl-ds theTable extname('T1803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1803 LIMIT 1;

theCharVar = 'Hello from P4519';
dsply theCharVar;
P4329();
P1783();
P2271();
return;