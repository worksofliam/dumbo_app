**free

ctl-opt dftactgrp(*no);

dcl-pi P2551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P2551';
dsply theCharVar;
P534();
P13();
P234();
return;