**free

ctl-opt dftactgrp(*no);

dcl-pi P2298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds T346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T346 FROM T346 LIMIT 1;

theCharVar = 'Hello from P2298';
dsply theCharVar;
P1333();
P509();
P482();
return;