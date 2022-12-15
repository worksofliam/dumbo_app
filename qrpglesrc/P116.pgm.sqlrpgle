**free

ctl-opt dftactgrp(*no);

dcl-pi P116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T1098') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1098 LIMIT 1;

theCharVar = 'Hello from P116';
dsply theCharVar;
P60();
P115();
P96();
return;