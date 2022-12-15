**free

ctl-opt dftactgrp(*no);

dcl-pi P3441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P1915.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'

dcl-ds T1279 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1279 FROM T1279 LIMIT 1;

theCharVar = 'Hello from P3441';
dsply theCharVar;
P585();
P1915();
P2255();
return;