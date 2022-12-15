**free

ctl-opt dftactgrp(*no);

dcl-pi P1206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds T417 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T417 FROM T417 LIMIT 1;

theCharVar = 'Hello from P1206';
dsply theCharVar;
P757();
P638();
P184();
return;