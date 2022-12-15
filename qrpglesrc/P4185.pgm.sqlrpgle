**free

ctl-opt dftactgrp(*no);

dcl-pi P4185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P2361.rpgleinc'
/copy 'qrpgleref/P2057.rpgleinc'

dcl-ds theTable extname('T853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T853 LIMIT 1;

theCharVar = 'Hello from P4185';
dsply theCharVar;
P268();
P2361();
P2057();
return;