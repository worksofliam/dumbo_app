**free

ctl-opt dftactgrp(*no);

dcl-pi P990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P990';
dsply theCharVar;
P148();
P796();
P435();
return;