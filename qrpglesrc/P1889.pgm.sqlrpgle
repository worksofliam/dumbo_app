**free

ctl-opt dftactgrp(*no);

dcl-pi P1889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'

dcl-ds T417 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T417 FROM T417 LIMIT 1;

theCharVar = 'Hello from P1889';
dsply theCharVar;
P1715();
P827();
P1826();
return;