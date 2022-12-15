**free

ctl-opt dftactgrp(*no);

dcl-pi P444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T115 FROM T115 LIMIT 1;

theCharVar = 'Hello from P444';
dsply theCharVar;
P426();
P0();
P12();
return;