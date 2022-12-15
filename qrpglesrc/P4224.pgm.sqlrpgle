**free

ctl-opt dftactgrp(*no);

dcl-pi P4224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2876.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P3377.rpgleinc'

dcl-ds T920 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T920 FROM T920 LIMIT 1;

theCharVar = 'Hello from P4224';
dsply theCharVar;
P2876();
P906();
P3377();
return;