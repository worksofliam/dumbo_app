**free

ctl-opt dftactgrp(*no);

dcl-pi P680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds T2 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T2 FROM T2 LIMIT 1;

theCharVar = 'Hello from P680';
dsply theCharVar;
P172();
P273();
P178();
return;