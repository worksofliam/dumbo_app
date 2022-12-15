**free

ctl-opt dftactgrp(*no);

dcl-pi P935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'

dcl-ds T568 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T568 FROM T568 LIMIT 1;

theCharVar = 'Hello from P935';
dsply theCharVar;
P287();
P320();
P583();
return;