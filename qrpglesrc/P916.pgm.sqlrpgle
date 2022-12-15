**free

ctl-opt dftactgrp(*no);

dcl-pi P916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P916';
dsply theCharVar;
P887();
P706();
P92();
return;