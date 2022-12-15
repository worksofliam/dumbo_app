**free

ctl-opt dftactgrp(*no);

dcl-pi P3171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P2620.rpgleinc'

dcl-ds T1654 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1654 FROM T1654 LIMIT 1;

theCharVar = 'Hello from P3171';
dsply theCharVar;
P1256();
P1408();
P2620();
return;