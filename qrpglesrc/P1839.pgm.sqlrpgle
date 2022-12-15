**free

ctl-opt dftactgrp(*no);

dcl-pi P1839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P1310.rpgleinc'

dcl-ds T427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T427 FROM T427 LIMIT 1;

theCharVar = 'Hello from P1839';
dsply theCharVar;
P1271();
P546();
P1310();
return;