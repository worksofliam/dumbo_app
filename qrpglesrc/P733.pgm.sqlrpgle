**free

ctl-opt dftactgrp(*no);

dcl-pi P733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds T887 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T887 FROM T887 LIMIT 1;

theCharVar = 'Hello from P733';
dsply theCharVar;
P354();
P466();
P229();
return;