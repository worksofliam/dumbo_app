**free

ctl-opt dftactgrp(*no);

dcl-pi P597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds T994 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T994 FROM T994 LIMIT 1;

theCharVar = 'Hello from P597';
dsply theCharVar;
P273();
P350();
P433();
return;