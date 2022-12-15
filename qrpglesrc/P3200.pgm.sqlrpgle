**free

ctl-opt dftactgrp(*no);

dcl-pi P3200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P2562.rpgleinc'
/copy 'qrpgleref/P2503.rpgleinc'

dcl-ds T934 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T934 FROM T934 LIMIT 1;

theCharVar = 'Hello from P3200';
dsply theCharVar;
P247();
P2562();
P2503();
return;