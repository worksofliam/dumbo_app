**free

ctl-opt dftactgrp(*no);

dcl-pi P1107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'

dcl-ds T416 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T416 FROM T416 LIMIT 1;

theCharVar = 'Hello from P1107';
dsply theCharVar;
P691();
P836();
P448();
return;