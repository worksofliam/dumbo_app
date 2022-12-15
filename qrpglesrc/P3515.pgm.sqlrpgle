**free

ctl-opt dftactgrp(*no);

dcl-pi P3515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2414.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P2938.rpgleinc'

dcl-ds T548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T548 FROM T548 LIMIT 1;

theCharVar = 'Hello from P3515';
dsply theCharVar;
P2414();
P1783();
P2938();
return;