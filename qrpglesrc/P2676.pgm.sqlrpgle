**free

ctl-opt dftactgrp(*no);

dcl-pi P2676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1925.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'

dcl-ds T1398 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1398 FROM T1398 LIMIT 1;

theCharVar = 'Hello from P2676';
dsply theCharVar;
P1925();
P378();
P921();
return;