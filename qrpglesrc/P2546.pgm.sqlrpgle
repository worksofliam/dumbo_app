**free

ctl-opt dftactgrp(*no);

dcl-pi P2546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1193.rpgleinc'
/copy 'qrpgleref/P2299.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds T265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T265 FROM T265 LIMIT 1;

theCharVar = 'Hello from P2546';
dsply theCharVar;
P1193();
P2299();
P96();
return;