**free

ctl-opt dftactgrp(*no);

dcl-pi P458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds T263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T263 FROM T263 LIMIT 1;

theCharVar = 'Hello from P458';
dsply theCharVar;
P198();
P1();
P419();
return;