**free

ctl-opt dftactgrp(*no);

dcl-pi P335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds T36 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T36 FROM T36 LIMIT 1;

theCharVar = 'Hello from P335';
dsply theCharVar;
P319();
P205();
P233();
return;