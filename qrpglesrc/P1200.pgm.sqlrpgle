**free

ctl-opt dftactgrp(*no);

dcl-pi P1200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P1200';
dsply theCharVar;
P676();
P670();
P544();
return;