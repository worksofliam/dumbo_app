**free

ctl-opt dftactgrp(*no);

dcl-pi P4081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2706.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P3201.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P4081';
dsply theCharVar;
P2706();
P67();
P3201();
return;