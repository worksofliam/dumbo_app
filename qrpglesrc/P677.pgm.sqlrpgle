**free

ctl-opt dftactgrp(*no);

dcl-pi P677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds T114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T114 FROM T114 LIMIT 1;

theCharVar = 'Hello from P677';
dsply theCharVar;
P229();
P305();
P638();
return;