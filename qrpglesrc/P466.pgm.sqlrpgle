**free

ctl-opt dftactgrp(*no);

dcl-pi P466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds T594 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T594 FROM T594 LIMIT 1;

theCharVar = 'Hello from P466';
dsply theCharVar;
P266();
P242();
P148();
return;