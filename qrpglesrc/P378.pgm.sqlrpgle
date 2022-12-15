**free

ctl-opt dftactgrp(*no);

dcl-pi P378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds T208 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T208 FROM T208 LIMIT 1;

theCharVar = 'Hello from P378';
dsply theCharVar;
P156();
P203();
P305();
return;