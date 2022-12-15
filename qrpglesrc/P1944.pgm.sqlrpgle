**free

ctl-opt dftactgrp(*no);

dcl-pi P1944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P1432.rpgleinc'

dcl-ds T688 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T688 FROM T688 LIMIT 1;

theCharVar = 'Hello from P1944';
dsply theCharVar;
P452();
P1733();
P1432();
return;