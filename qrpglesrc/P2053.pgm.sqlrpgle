**free

ctl-opt dftactgrp(*no);

dcl-pi P2053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'
/copy 'qrpgleref/P1958.rpgleinc'

dcl-ds T707 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T707 FROM T707 LIMIT 1;

theCharVar = 'Hello from P2053';
dsply theCharVar;
P38();
P603();
P1958();
return;