**free

ctl-opt dftactgrp(*no);

dcl-pi P3369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2040.rpgleinc'
/copy 'qrpgleref/P3272.rpgleinc'
/copy 'qrpgleref/P3193.rpgleinc'

dcl-ds T394 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T394 FROM T394 LIMIT 1;

theCharVar = 'Hello from P3369';
dsply theCharVar;
P2040();
P3272();
P3193();
return;