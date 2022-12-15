**free

ctl-opt dftactgrp(*no);

dcl-pi P5416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3096.rpgleinc'
/copy 'qrpgleref/P2017.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'

dcl-ds T995 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T995 FROM T995 LIMIT 1;

theCharVar = 'Hello from P5416';
dsply theCharVar;
P3096();
P2017();
P1968();
return;