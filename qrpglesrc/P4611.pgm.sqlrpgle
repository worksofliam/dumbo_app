**free

ctl-opt dftactgrp(*no);

dcl-pi P4611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3354.rpgleinc'
/copy 'qrpgleref/P3092.rpgleinc'
/copy 'qrpgleref/P4121.rpgleinc'

dcl-ds theTable extname('T253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T253 LIMIT 1;

theCharVar = 'Hello from P4611';
dsply theCharVar;
P3354();
P3092();
P4121();
return;