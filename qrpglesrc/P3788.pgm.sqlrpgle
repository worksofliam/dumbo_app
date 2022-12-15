**free

ctl-opt dftactgrp(*no);

dcl-pi P3788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2330.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds T494 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T494 FROM T494 LIMIT 1;

theCharVar = 'Hello from P3788';
dsply theCharVar;
P2330();
P2255();
P443();
return;