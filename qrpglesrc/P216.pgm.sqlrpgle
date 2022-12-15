**free

ctl-opt dftactgrp(*no);

dcl-pi P216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds T51 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T51 FROM T51 LIMIT 1;

theCharVar = 'Hello from P216';
dsply theCharVar;
P0();
P176();
P122();
return;