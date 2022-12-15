**free

ctl-opt dftactgrp(*no);

dcl-pi P1219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds T765 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T765 FROM T765 LIMIT 1;

theCharVar = 'Hello from P1219';
dsply theCharVar;
P156();
P327();
P181();
return;