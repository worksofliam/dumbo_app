**free

ctl-opt dftactgrp(*no);

dcl-pi P1755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds T240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T240 FROM T240 LIMIT 1;

theCharVar = 'Hello from P1755';
dsply theCharVar;
P371();
P943();
P1324();
return;