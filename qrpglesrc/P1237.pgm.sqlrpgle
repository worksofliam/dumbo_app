**free

ctl-opt dftactgrp(*no);

dcl-pi P1237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds T88 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T88 FROM T88 LIMIT 1;

theCharVar = 'Hello from P1237';
dsply theCharVar;
P223();
P819();
P775();
return;