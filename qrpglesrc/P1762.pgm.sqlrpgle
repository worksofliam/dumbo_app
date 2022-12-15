**free

ctl-opt dftactgrp(*no);

dcl-pi P1762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'

dcl-ds T274 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T274 FROM T274 LIMIT 1;

theCharVar = 'Hello from P1762';
dsply theCharVar;
P896();
P697();
P1043();
return;