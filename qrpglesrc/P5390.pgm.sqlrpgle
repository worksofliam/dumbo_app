**free

ctl-opt dftactgrp(*no);

dcl-pi P5390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2293.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds T432 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T432 FROM T432 LIMIT 1;

theCharVar = 'Hello from P5390';
dsply theCharVar;
P2293();
P662();
P111();
return;