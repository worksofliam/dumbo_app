**free

ctl-opt dftactgrp(*no);

dcl-pi P2151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1934.rpgleinc'
/copy 'qrpgleref/P1922.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'

dcl-ds T663 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T663 FROM T663 LIMIT 1;

theCharVar = 'Hello from P2151';
dsply theCharVar;
P1934();
P1922();
P833();
return;