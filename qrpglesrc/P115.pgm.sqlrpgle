**free

ctl-opt dftactgrp(*no);

dcl-pi P115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P115';
dsply theCharVar;
P98();
P67();
P100();
return;