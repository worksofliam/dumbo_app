**free

ctl-opt dftactgrp(*no);

dcl-pi P65;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T446') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T446 LIMIT 1;

theCharVar = 'Hello from P65';
dsply theCharVar;
P55();
P36();
P59();
return;