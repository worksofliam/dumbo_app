**free

ctl-opt dftactgrp(*no);

dcl-pi P3435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P3381.rpgleinc'

dcl-ds T416 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T416 FROM T416 LIMIT 1;

theCharVar = 'Hello from P3435';
dsply theCharVar;
P919();
P1570();
P3381();
return;