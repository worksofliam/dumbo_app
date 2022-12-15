**free

ctl-opt dftactgrp(*no);

dcl-pi P421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T446') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T446 LIMIT 1;

theCharVar = 'Hello from P421';
dsply theCharVar;
P15();
P66();
P229();
return;