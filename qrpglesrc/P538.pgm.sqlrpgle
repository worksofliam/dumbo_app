**free

ctl-opt dftactgrp(*no);

dcl-pi P538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds T278 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T278 FROM T278 LIMIT 1;

theCharVar = 'Hello from P538';
dsply theCharVar;
P215();
P355();
P305();
return;