**free

ctl-opt dftactgrp(*no);

dcl-pi P3358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'

dcl-ds T582 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T582 FROM T582 LIMIT 1;

theCharVar = 'Hello from P3358';
dsply theCharVar;
P919();
P1435();
P1454();
return;